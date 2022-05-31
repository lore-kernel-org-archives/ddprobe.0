Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6A33205
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 14:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654005599;
	h=To:Subject:From:Message-Id:Date;
	bh=GXI9fPA7dNiQua/Yup3AEQvAu04bacn7BeULoCJjARw=;
	b=AKI8MO7MsTuTj3txpkisroFGeCoTXZ4BtPsgIRMcLoTCPNHpB9PE+0b5dQaWoTuC
	Ejlr7Xd8s33MFgP3epRRdh3wrA6Jf5M6uf4Cw/CHhgGkfbm8g+HHxJirg3yxIoP+qAv
	0tZwVEV3t7rqVx/X7j7GCDfZ3sFDKDt60Lh3lOoI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654005599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GXI9fPA7dNiQua/Yup3AEQvAu04bacn7BeULoCJjARw=;
	b=bwGymgoPuCyLA6d/xXZnNnxzckANrHm02JWWEbHLi0vSDWOQijzKFOr0OAYJW8Pl
	c5TZiV8jHvtD48hJIe9yg6MX0XQ+9RWumrhGTY8L40zzqqU6dWSeqv/B8LWUSPaV990
	CoU35oJ16IZvB6FABDPELp35PSFOhDIQkhzPGmsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811a6a8c53-fe8d3bce-0e88-4e4c-9c0e-69c773c9f28d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa1570024a2bb27d129777cbf3dfa09015f6b88cd1868573a450f60f534e138f
Date: Tue, 31 May 2022 13:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654005599
