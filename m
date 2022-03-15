Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCEAF23A0
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647353784;
	h=To:Subject:From:Message-Id:Date;
	bh=I7mpKj5406SrbN9QX2T6BEfNa96lXghp8CcQsWPNzR8=;
	b=N+HQoyzXXFwUiD2oTmKHcLuSjr08IDkelu6sD2QKWvt0J6IfrzLKCpkHH4+4OFhF
	j+HlIzVGwy1KKjg2GP2VWjcL1smYsD/Zk8jrAe0GKLAJMuY9oAagKODwHWArslt4qo6
	WTiQIX1JkoeAqK9XYvC/i7nzX7yJQxYaN+k230KY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647353784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I7mpKj5406SrbN9QX2T6BEfNa96lXghp8CcQsWPNzR8=;
	b=MVFSfk5SCgL8TYxD4XJaJly5UoL6kMvu3UG816azzXsom5w7kom0Et3r2vJjrrZu
	CjygXADrTdKlreULVPlZN5pqBCXiSe5QgPCig7YUBSryNGX4skrC1PIxjfYtbOLZ6gd
	G9NuGbHoNoUvw6lqFnGwBPi6Nk2lHxk32ttBxEeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8defe9d2-4b5215b3-9849-4572-b43b-fe3dea69427d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ffdc702c3a1812147d931e576bf09f9f95b4281b1556cf6a9a1a3a8f53086a3
Date: Tue, 15 Mar 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647353784
