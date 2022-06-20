Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAB47B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 02:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655692799;
	h=To:Subject:From:Message-Id:Date;
	bh=nc2eBsAOaIwDakhFgaHmL77rCSgENNeAMfhpA65cfHY=;
	b=RZph7cB6c2u6y/uTcnNRETZAnCeWTOWvLmBEWJ54bZiIlEmSXZSvZ9nqMip4f7AE
	4zGBftZX+OCBrae884DdrEoCvblp60k0epiDnw8sHAAywS3Uq99s3i+n4FfZyocfYCp
	6E6hOWNA13q4N1LHglOKAzQU1MgAp2Jkm9I4GTQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655692799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nc2eBsAOaIwDakhFgaHmL77rCSgENNeAMfhpA65cfHY=;
	b=ikPBRVngDgL7viYkhYinsZwU8ww4BjjzPpitgaRXrGQ/nHT2SqVUrUUzMxFW8gHE
	GAXtfbfSu9XO3HLwpZisBWpFURXd+mUqz5kkORn+o6TpXsUFQtSC6veU9Uj0Vgo6RwX
	eDZM3DWO/RxTZUVsiyPOEgOKOlsWleqDQEmcyQnQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817efb2cfe-dd426693-7143-46ea-9061-54fcca1421b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f30187bed6b62f69ba60448a3ef46a4395492319663622ad87f01b4cd92c4c78
Date: Mon, 20 Jun 2022 02:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655692799
