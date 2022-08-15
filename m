Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93B2C1102
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660549852;
	h=To:Subject:From:Message-Id:Date;
	bh=W/3DIGakpyFH307Gly5wiibFZygU4GhlMCbYDMEIjok=;
	b=eA5RLhhs3DQLvPxCgU6HfUcK3nkRJU1pvA4nsvVcutLWeG24iVXS5f+LQrd/wi5K
	yk6dHdKOvKoTvx8X7SrHYaopvD29AQdr0puSicu+80PyFvQuPGDugVPOOfJFEz6FZt1
	io2OgOoCJbieNGB8gFjyLQuf84orPxEBsQPNHg5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660549852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W/3DIGakpyFH307Gly5wiibFZygU4GhlMCbYDMEIjok=;
	b=Hvgbvhbt/EC5IfvvYddmi2wzOWBQnjJBCTydjXYM5tsjxyN8ICL/tHeQIQ/vXl0Y
	gSYcTUdo0wJDiTwBd9t8UhrI6x+tQ/yIpOaR9pDoENgujAd15oICkQn92/sDM3UjMPt
	lHKBSW9PqjBuKPAxLgzY4zIrw/cA/5pzrzjFbZcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a07bedbf-f9f30b06-fb53-46d8-93ab-7b955ccd5484-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f402ea452e9e242f62546057642015d036d858c5cf60c84ff5f88846692a6f93
Date: Mon, 15 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660549852
