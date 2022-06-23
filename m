Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159E7186B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 08:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655973779;
	h=To:Subject:From:Message-Id:Date;
	bh=bwYW9V2LO0CGEEXvayel1yDgNTqaBhBvksPfnBetEGI=;
	b=QimJPpsC5QpO/NsTXQfCLLaiuwHM3zPc4JyLwN6jy9Q4cOI/3KmsxqenljUdPlIm
	JBcRgcpYqUSYsKph8lWgvwCs2b+CzMfb7kVGvAmj/qkyHYLqjlvQ2BsAYKrsFSWomrZ
	4b+iRIVY6gLW9GBsQg3CYkJfmygYS81dVEQjMz8U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655973779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bwYW9V2LO0CGEEXvayel1yDgNTqaBhBvksPfnBetEGI=;
	b=ZplVMG/t6OAw87nYVj2oq0Mzf1Vi/e/OqNZpHFSULJMLgzXOEneVIeFKODtsgFLY
	+9Bn8j+ywoRp4lNC37WFlQIEFWLy+fg4UhYWfweBzmK5aU/4I3gxvygFEMYyFYks2bv
	FyPqPj3Kdw+gkiIYAzO2qAfm3QkINLAjE+KKroYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818fba9728-0792dcb6-5ac1-49c5-9d4c-b8f5eef417c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d4b8c903f033890aac320896dc94327b59c36745b737a104f4cdcdb7e6a2798
Date: Thu, 23 Jun 2022 08:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655973779
