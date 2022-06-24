Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D19023A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 05:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656048412;
	h=To:Subject:From:Message-Id:Date;
	bh=VXNFbIQorZvpeiu2RQRCnOo/5zBTuZbx8byUtV06HFQ=;
	b=Q6ac4SykNy7IsZyJ7inUWuGr8TuaTZ12SAqfWHLk4sJTE58fHOzump3pux7jZOsf
	w+/5cA3Q7CVc9yGmWAZAWMv9J99gun46heH2ttH9F1NkvGX3ikd/uwAGU3RSIBY3rcw
	QrWx142rNVmli3RT2uKyk0eplp3s0wKhHR8p3guI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656048412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VXNFbIQorZvpeiu2RQRCnOo/5zBTuZbx8byUtV06HFQ=;
	b=Z4Uxlc+FJ5nwlKA3jI2x16O2zfA+Wp3aZvNqiKFkVrONDenMYjuwjqOnSNPaLKoG
	1m1+0ktJ5zW6vDAYq1EbePRUachlKF62G9+TYbkVtnv658HWGvmXIHWnA9Vmy+eIE37
	Pol90i0/zTIHC+CU+uB828NmvEh1hitwQsGC4HWs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181942d6685-4d585798-071e-494d-b7f4-1794f8719475-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed3221d48bbdb247f8bebee590c4f1a2f3d8e3ed035a81c2029a4c55803cba2e
Date: Fri, 24 Jun 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656048412
