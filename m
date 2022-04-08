Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DAD623
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 09:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649411878;
	h=To:Subject:From:Message-Id:Date;
	bh=hPVbIHAtyOYxljKtv/UoosPN7TssfeJohUbWuftj7N4=;
	b=eeRRWztY1W/odiy2Euh+FpTH9JXJkgSEgmcb0wiIvMgcghhSBpRmiwEe1pPKvEka
	g4Ca3I85SL1lteO+ThDm509FBJ4pU0eaduAmOXCNz7jzY2k3yb/YZ3pMV04wesCbBWM
	JY+qxRKodwsIvoCMiX89Ii5LjK6WTltTyUk7AYE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649411878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hPVbIHAtyOYxljKtv/UoosPN7TssfeJohUbWuftj7N4=;
	b=hVJqvIfQz1e/ZgK8mTadoAv3hdsMedJ8yOIqUhtqUP9+qo6t4IhshT1uF58L5AXi
	5+sDHifM83xYsZr69ZSr2ngPEjyaTMdGylDQ/N9zKRAKMtNntTfu5lSAEodTHZFU5r6
	4ONQH75MA1ByAkkOAGdSQguK3AuhpVrkrGf2rEDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180089bed80-0fc84faf-98c3-42e7-b5b8-1d2ce7ff1049-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5989c7965ba8c0f4f7d9fa5e848079a6e1c5d4cb0d1ccc9ed0fe7933aa29ee2
Date: Fri, 8 Apr 2022 09:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649411878
