Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88B017C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 10:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653041279;
	h=To:Subject:From:Message-Id:Date;
	bh=sXCTUPTGyn6yft7MMIqx2lUjVnkNZbOq6oB8Bcu388U=;
	b=QOLJHAHr0wPC4XIXH5L1TbJ08fXW6eDL7y73jhG3lqtDS1sv7C0gS+cUcF8Doe/0
	6Nl5QoOFGvD8RNn0+g0hCoCVX5mxf6nX1CvOr9LHN3Tacai13RaAKeFBSKi/MPQiUMT
	YxhSb9LEKYOwyYgiXggYmsQEdH0DbHUYEfUBzE+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653041279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sXCTUPTGyn6yft7MMIqx2lUjVnkNZbOq6oB8Bcu388U=;
	b=UyrDaCUwme5BAir+Boq9sxLtAZ8PHn178EzdeDr8VkvBZgFP5UvLxGLqOfaHskDb
	eGvrGp2fcQyI5bWsCDm9qoL3qVoxoHFxTZ05gchb9avi7p0buSCAj7UC1zetlB5iiaL
	ptNC4uHGEK0/ucsOVs11JNVq+N3Lwzb6B3Gbe3nw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0f03128-c0142410-7025-4f77-9ca1-9510180e448e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11e6d88970281c48b2a4456b20b479567e80b1ada051fbfd037408feb27283c8
Date: Fri, 20 May 2022 10:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653041279
