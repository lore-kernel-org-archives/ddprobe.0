Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7705B3214
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660917052;
	h=To:Subject:From:Message-Id:Date;
	bh=rF+cP1h31Jlrv67Ha4Ld6T3/jGjpGampw5X7PZ42aYQ=;
	b=Rp8o7C/e2BwTqlIUOQUFPsbbAyIJneWaQcIMLIFE6KOpVMLDz6RM51Fwq6fm24++
	32UqCviRh87Uw8ADbWitDgRuKHwCNH+Ylk56rIyMY/TrOgztl4XQZC+n4N5HYI1uvR0
	auzEoVs7qxqFymkDpHuQmIJ/4swqkFE4TzPXhQT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660917052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rF+cP1h31Jlrv67Ha4Ld6T3/jGjpGampw5X7PZ42aYQ=;
	b=OSec7fzKgl0taI1eTidSVgPwyhy+vzC/dfAfr/cwa98Cvw9CNSxgIvW/oZFZrkLp
	Xm5vZB0SAYRbY+g2oq9cexI9ko1HT2HTh4TRqp2r7yo9Yo+wxJ6NZUWotD3k9zA1fio
	SEppI561DZJOL+4trcIfGNFv38hSfkFQNuKhXjek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b65ef496-4d496f0e-3514-4993-ac39-75af2a06d125-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee080e2518d1005e7a21b5e0d9747fdcd65353a1022f3d6b8c9d327e530fb6c4
Date: Fri, 19 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660917052
