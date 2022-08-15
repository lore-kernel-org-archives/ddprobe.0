Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E33F1102
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660548052;
	h=To:Subject:From:Message-Id:Date;
	bh=kbIT06EZU6I9Am6cFQPUAgBB6rIK8hSUmjhneV7vcFo=;
	b=X7Bv3/qbbAGByWZuvvQdpwY3/eK5QPww4lt61dY/0IgboSDoFz1cy+1PoUH3hDGW
	MiBUPC8oBq1iqso4Wam8RVNaERllzSPP4x/+cnoNunGJq5quLJuNUTS30fmUwfjxo/1
	FvLC1+boKHUHwhUad2UjGV28XyVfWbr/1rx6/pZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660548052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kbIT06EZU6I9Am6cFQPUAgBB6rIK8hSUmjhneV7vcFo=;
	b=CLnqCBiROnbVI1atqYfg1vrZ/KvcUvm3UKea9S5/CoWNAQqfEO3M8OW+uAiDr5O+
	d5YCPCRLLqhp/k8pGZ9y4poqlvtpSDtrVIhKyJYcJ4N1WIHWz86iyM1LMg4mCWz2q8W
	3nyq5JO3Tf64NrByU+MoBF2F0WnwGOx/8SUW8fBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a0607660-e2511a49-3828-416b-ab67-b5e3cb4b48ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86570d7182aee5a3f97e54e22ecf96614e989039447dcc503a0e07e143160b35
Date: Mon, 15 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660548052
