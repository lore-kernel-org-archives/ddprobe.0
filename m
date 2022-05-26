Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258FA1841
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 15:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653580619;
	h=To:Subject:From:Message-Id:Date;
	bh=SfyyMP4t2Fq7Pz0uUq9C9epuRxNKD+4Y65KodUPMBNI=;
	b=ku6mZQL2x4MFRkibB8fQ5N3hzuKfAxNrKt+iUSezVmgxSsW6DbHFvpUhSQpQqdN8
	PdA1eFzkUSaT+9JfAJHROUFN7TYWDx5ZeLDGA8xyW+EoWnlughSBSeNuvNq3VCIcrt7
	JBYUr0WF42+oBE9U27/9SvhAlbeJ0cuOHJapTu7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653580619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SfyyMP4t2Fq7Pz0uUq9C9epuRxNKD+4Y65KodUPMBNI=;
	b=gBIdqIZsInFV+E1svlr047C0g0Ie6/31W22ud6bu1nkcqZCeIcprByjPRywsTe33
	ZwnAN1bOpdtNwkuhFHi8/0vl8R3aD13N3xmaqSNn+HekE4wNlgdoVmyOIg7isbpboVn
	4zxHEit7zN+PXgLTQli8j8VvvsQ/yfmpeqkHW+cY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810115de22-93fbfbb9-7fd2-45ca-bbff-3b21bd7300d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebf21766b13b29e783999d8b1d4be5fe95e9a85dd6577df8df544abeccc144d2
Date: Thu, 26 May 2022 15:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653580619
