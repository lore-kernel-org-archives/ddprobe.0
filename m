Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF7F198
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656229012;
	h=To:Subject:From:Message-Id:Date;
	bh=V0Y1EomzCGUYTACVA9rCcxrzIpCsyl60Kipi7znnDGE=;
	b=AQmV41s8rGirB5LPZpyL6ICQxAYpyrZdAcaidn39E6kADOviVzXL6hb3dUlEMiLf
	LRZUacfFmpFaJ9Rvnjc5IHxFKaJGHbX24FegBQYK7elDDLjkO11Dh1xgHW/IzwvguHD
	FQWcMCboiZwbDfH9xIeHHEbSx2nWxRkOzkBQNLbg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656229012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V0Y1EomzCGUYTACVA9rCcxrzIpCsyl60Kipi7znnDGE=;
	b=SwOK9XQIpf1BQLelKVri+fM+139YmFMwXdKu06zQLlXGptFIKbHvH9PvJERamTNE
	gtalAX4SBXxahiIu6UZp82XfLchMGXEbMEFfVneJWeIEay1E/y++bKR4apLs8vKSI39
	f59t6eKoAms7e1480KpCYZajIjmyIAPW+Z5J3W5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ef12330-31035c67-e9b7-4a61-87f2-1696a2cb3554-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fe224ed405ac67406a430d7236c5b8e9a16a650012c5f12b67027029bb10c9a
Date: Sun, 26 Jun 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656229012
