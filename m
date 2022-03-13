Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722212F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647199584;
	h=To:Subject:From:Message-Id:Date;
	bh=XkGSe2qgJll5ZTzBq/WacBJ7exYF/wS3EjSBGZh9vUE=;
	b=aOV9D7Cllq+8J7ZUjwkGDM7CFCR/TIV93buXCgATbdu05nIXF2p0L/4XI5ofrbzk
	UgaONDxGQvUljUmfwtRrZiTC1iRUT58o8V+dVG0gVcB3s14XD1cbf3AJEBoc/t/kKpL
	JoQHm7O+h556MtkZDd+0BtxYwaT544agV0Vo9rP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647199584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XkGSe2qgJll5ZTzBq/WacBJ7exYF/wS3EjSBGZh9vUE=;
	b=PzANREIm4aIFfRuQ1aHjZZ1Mykn4UsaN6efnMM+2ErATc2K7fGpk2JOMROIW+D3b
	AkNjLsJWL7gpXhQNJDOnVzeQvdQoLK6DJKWsqgD1alm8a4clrBULNvx6+cY7MLeowB2
	ST/7Hi0Id4ExEH00+tlWH9Mf8t97S7qaK569voiY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84bf024f-148d9140-b041-4c8f-8feb-0e887276309e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ebfc2f82c79058d2608dd6a0784e2d34086d745aa002dffa8387a6918ccbe7c
Date: Sun, 13 Mar 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647199584
