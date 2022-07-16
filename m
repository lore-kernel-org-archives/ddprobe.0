Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41083638
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 11:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657971412;
	h=To:Subject:From:Message-Id:Date;
	bh=DTWzFGXgQ5DWw9AEFX4xT67SJD+KT2X28zhBZZ2TVfQ=;
	b=kKWvUe6AKIAugQb5g+wSzyqaq6cT925FDrcaqTSJYt5YFQiyyMiI9Wu6RsJUrlHT
	9owALdNWzqr1UFWvDkqLxNumG1Q1M56vdawoeU1WPl6vVKx9y1EQE0OvIs1RchCsz4D
	DiSVB/SPItjyrMiA26JfZZ00ffgxHftH+aRv7gw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657971412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DTWzFGXgQ5DWw9AEFX4xT67SJD+KT2X28zhBZZ2TVfQ=;
	b=WdjmI99rNNJs/XKBuDX75BcMcnIi8fEQU3L71XQZE8ms40w35Us79xzc58hVugv4
	05X4Q4j96eZYC+6hlJ/PPAHQiek32XSvD7UwSpAo/x6BzFWXkq6XUZFuqx7dIfPaySU
	9+Nv55Wcd5S5CN1o2yXCEYmKUhiNPoecK6u8QeTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018206cc0dab-bafeb5f0-2be1-40be-af8a-135f1d381155-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55f9efa2cf816fdce209485669dc2a4b03333487d2cecefa169beee5e590cb1e
Date: Sat, 16 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657971412
