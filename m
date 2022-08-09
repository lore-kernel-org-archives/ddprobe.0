Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5987B443D
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660066852;
	h=To:Subject:From:Message-Id:Date;
	bh=E7ZPjfBPWYjOkBwbxASBznZNnIk9iEqx9QwV3CAP1Kg=;
	b=AVhTKc2y77eHYVmtvt6AjFI7Fa/znqVoz5b07Jf5SzVzWmSZ8VJwdQldUjPLwaAq
	5U/N5mAmxNTp11Lz/v42uFKHQZG5PKN2S+sXSueUbX9vbBLBTThvlM+tLV+GrwDQC27
	O0sit9ITiqSyB4GRqMAqRRmsU/GcUotw/d0X5fS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660066852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E7ZPjfBPWYjOkBwbxASBznZNnIk9iEqx9QwV3CAP1Kg=;
	b=hruUtALiDv2QM5HYTxghauLyWfXiMYKbtiBQhVhZFfg5B96JIljJnQ6m/O9RQ0p4
	jA63wbI/HrMdbX3WBJpRgaml7F8cx8hMIU3zSjDiZyj9UKslydZcCAOP+CkwFf6xVxV
	WdaCKJq/Bl0qTqneSQKyWouiQCpgvalg7GRKiIO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018283b1eecb-b7094a05-04a5-42cc-8aec-d6a8ace09c84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51119d49c3b3f51eb841cd7baa08b09ed562b471c102b2399e68a2b3fb99f2c2
Date: Tue, 9 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660066852
