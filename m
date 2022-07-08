Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7EB82563
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657282012;
	h=To:Subject:From:Message-Id:Date;
	bh=r/8b+qPB7VGolnHLT4hTUOAjVt3DKEY+cJLPpq3NMCs=;
	b=IgI0UmT+XJNNciTKnIaZ6SoPfpGuc5IFs56MtXH+Jdb3DN/VsfGriPngoxyh8g1j
	TUQqvHEX3s/txjEPDBRCWkcSjNYbSdtztF5HtagD4nuYVj/u/EVSBuEC9ezAnCVUn1V
	KbM0/GyzItk71veHrGFpCzQ2W3KNx6dHBouDYPDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657282012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r/8b+qPB7VGolnHLT4hTUOAjVt3DKEY+cJLPpq3NMCs=;
	b=De7QZJwvWNXQ9Dx0rgn2t1xMsTqVIiV1bZKTrXazfpXyCH1KAKKNb2j34pxOuwYy
	qnvI0pwBySTGiUKSXb5XzSZCbHi0RujoG6LYnpiX1oRwdJlfWWKkoASWcBrDgUSRrMk
	SAYO8eESUby6+i8a/QcNXKxJ0eI2DCN/JcqN7BsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ddb4a49a-57af2468-f1f7-476c-9123-4d2c6019df85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43b124adc9e35046951746b0d1c18737fb99b86793ed51ead4604f6eea207db5
Date: Fri, 8 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657282012
