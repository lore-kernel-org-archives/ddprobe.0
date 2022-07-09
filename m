Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37877B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657360012;
	h=To:Subject:From:Message-Id:Date;
	bh=lpID1Zu7p6nLyf9OjRjo2snJgJ/7oK2diViDX4pv/y8=;
	b=Uf/iRhA62mvRauCDUpmDZDjNxYTV+nTFnZ/fYIdf5IC/hYKCJmEPty9iTTkFrg+W
	0AUNxJIjrQmQxGws2fv2Qq5Il89DL+nNJwsq4dXULd5l8OzgS3Knr5SWHj7wbFCWqSN
	uVFBsz9oU82CGd7wmwi1srHRpDFc9kzCeNro7GV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657360012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lpID1Zu7p6nLyf9OjRjo2snJgJ/7oK2diViDX4pv/y8=;
	b=ZAFywKzbwoVW2SrSLgOXB3S8pvRpHwitUw6qxi4naavjgv1BxzcsDN4Ky9+oCbDM
	BI1dhNZQlgrNsrFIftmSXL/eNoNtzP/jgg88SApppZDH3xKgFbXqwe0pA3m2UZYvYhC
	81d6WrIOaEw3kHNnYnh5IlfExZSIrXZ8RFKNl4NE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e25ad3d6-19630fd3-f4fc-4720-8b9c-f9b33b3dec05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62c184e3a36cc88925e4ec3b3cb1261a8ec7786eba1a3357381f8d65e14d90c3
Date: Sat, 9 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657360012
