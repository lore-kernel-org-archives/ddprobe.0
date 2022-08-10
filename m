Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E5617D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660132853;
	h=To:Subject:From:Message-Id:Date;
	bh=S8UeyczN5VxYA+DYFinW4GRabciSMQ+uLJHfbxRkWDc=;
	b=awZDDgWaywkLRDjb+sUNHtF0nEgBrk6/sSNkwDDk8GDqRVHVJo7OcCIvOrpe4QoH
	XVE3xXp3jQFNprSAIrsa8k+vqg5F111c3Sx1x2Z+chBkEmUvFVX0sAeKrWiHeMyWKIu
	rGfJJxTHZMpwP9wRb+yJygSW1a2CL2k++bZR+3jI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660132853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S8UeyczN5VxYA+DYFinW4GRabciSMQ+uLJHfbxRkWDc=;
	b=bDCLuxoilozL9P+UOrGARsG5mgrBrCMxzVDoFy1h5z5zUtCwoXoGup7SN2iYA/HF
	0ffLySI0uXZVtesxV6hUEM09oAJjEo60etOVq+UlKTe4ocGmFqlh6o2E50WGJcRZ3p5
	yAtxkFIuABOAAlvjp5Gpv4e3BGu2aOPI2QUIVGJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018287a1039a-84196321-c4ee-449a-9ceb-d78691518bcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e15240b4eb33eda93a3bba2c60e7dca0c761d70372798b20304c291be7fd318
Date: Wed, 10 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660132852
