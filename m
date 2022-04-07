Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FEFC2563
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 15:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649344558;
	h=To:Subject:From:Message-Id:Date;
	bh=Cmh/eJmcAa3KGti3Z/35eiFPdK12XmHhGg15n9nWbIM=;
	b=UVgC07CYGbN+Q08e4PRYtLML+Q9wyp+3NojTdstHfxQiZgrNq52wajIRiDx/+/C4
	noqgC65IEtkssjnBcXQAkszhVBe2O0hwXlNLS2xbOlNJsCTVr2A0BiByhpU4skaf3Sb
	OSn+BX24M70++TWg2HFKqi/5nWOf3tFTMX/NCK0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649344558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cmh/eJmcAa3KGti3Z/35eiFPdK12XmHhGg15n9nWbIM=;
	b=bnDhWaY+icTX8c++HVcWVklU1rncRYPT9Wpwu8zy3rkQXUzJ0QUjgNCW2Ao+UHYS
	FiF0q+3LMn3OaGe1xOL8qX4BoXoMvH/kgxt/ekvQoK1S/hXRHZGUoT8EO9OVYMRfSKo
	4b8OA0A483I++yepqXJvcdNjhqxsxWmdi3NWx/GY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800498b534-b2dc3824-a734-43ea-8f4b-7836edc182d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 877acce36a03bb0b96582fdb6b3583115fdacc239c1b79f988a781344c0ec978
Date: Thu, 7 Apr 2022 15:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649344558
