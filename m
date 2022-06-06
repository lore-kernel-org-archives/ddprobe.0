Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243B17E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 07:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654502339;
	h=To:Subject:From:Message-Id:Date;
	bh=l/ezAeh5EyRBlLogN1LOGyPH0egkBMt1WHhubyelCp4=;
	b=f/IkpSIlBlTHNN8m6+29Uy3FaERXqv9PKPsTAevJQrhR4cz5eBaHpBIoDc4BEBjM
	t1cv+InMjtvvj+VYw93K49QvSw2sixLNv7+EggMpdHN9RevOVp4cipu0b5QpKBgYaXk
	3n/q4qXm5dtLxfVQalkx0ZMlbvU5gAGu/y9w11H8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654502339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l/ezAeh5EyRBlLogN1LOGyPH0egkBMt1WHhubyelCp4=;
	b=F2oPf51OZwcKcGch89dA1nyWn5wQPybhRgQxCeNyFbCwRefSLIKw0/SQLHgL2GO8
	RSOFQY7CLUafNUfxPai55HvTQn1hc1ne6h/iQZt0NQgf5J2A8XVZ7+xv5v6wGf7JGBj
	V/M0lLuZoH5x1FNNwqJZPC+u4hwO4l/lSUnPidd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181380632fb-82d407ef-01b2-4bc5-b9e2-0fd1555f047b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6db7b985266ee39359b4dddbd1a424bdc1d2c458b5a090f8691e6eb85d9a074f
Date: Mon, 6 Jun 2022 07:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654502339
