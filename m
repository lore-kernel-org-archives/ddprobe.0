Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0660F257E
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 14:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653229439;
	h=To:Subject:From:Message-Id:Date;
	bh=yumK5sIKXxdCSlnq7CB1vvcyZohzhjhPTqsiyzdVtWs=;
	b=Etm4x9V9yUlbTSpG7c/bPIVNtkQ9l8N00xaMlJ1iz2ejNdPGIYQiIQZroqnR6tB/
	DmL98TXExZ1ntpHBFpvbZg9wcrG46923QuFWgtCIEvdt3jonrJ1cusOdBbqQBxZ55zd
	IT0GKfqGQTZrPqTg+MYqgkzncBlldOLfl8UBJ+K4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653229439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yumK5sIKXxdCSlnq7CB1vvcyZohzhjhPTqsiyzdVtWs=;
	b=Ye/j6Us0KYLAGvLF90AQrRxbygQwWbYqbxwn966FwfgRSiV3ty1VGi5zPh4EeXc8
	rQPphCLoEd+n/u80bwlbHGeFE8WE/QuCJzzb5WiKCWgHxy0NB+Lip+GwW8SApZ5jUD5
	RFQBzDoGgevBg9EQ3qi/WIfDuTOU71feJOUmtglQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ec27491e-199353dc-3eac-4ff3-8818-89148d5a5449-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7b5a3177bfdcab16664e56ee77e972675b91ebb1067de3670eafe37aba8d42d
Date: Sun, 22 May 2022 14:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653229439
