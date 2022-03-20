Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6422017C9
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647786684;
	h=To:Subject:From:Message-Id:Date;
	bh=ApkwYP0jneb4JEnmNKr+jJD9gPfJG9BJVvcBVn8VEB0=;
	b=U4smm07IlFrFJhyfHKjKYrTxNGFdKJGkYZ2yLuCWbJaZynb6QNgrgHP3JvLBLdqP
	qeOHMOdodIvDmZftXcHM8CK9/Kgf0hzZH3ydFCwYjXRAu9TpIhSWEnnRh8lIMXKQThU
	XFLQN8Va/lexiMuH2vo+DEaa1+JeB23vm/ThGjM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647786684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ApkwYP0jneb4JEnmNKr+jJD9gPfJG9BJVvcBVn8VEB0=;
	b=hiIOmbPo2t1O/7m/6Dqqr8ZHZdT7uLZrDZLgaRbKyQYzObvvIMYZWR4GdbMY1/v9
	UBKZMX1rKvftLyvOrQ4pPw+UkHRnGPNRfueMw0rN6MTq0y2SpmmXfCPkbFenq7gxI++
	BMxaVPOfwaqP5Bb7iJKwJMrGGfTBfelgut0C4dwQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7bd712f-0c3c7883-5524-4d39-9ece-2f613d569a7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98fe4d42ee171feb1f1b4051f2869a015cca695ca3c1816c534816a68ad2132c
Date: Sun, 20 Mar 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647786684
