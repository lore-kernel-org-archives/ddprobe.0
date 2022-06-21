Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6EB1C0C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 23:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655852999;
	h=To:Subject:From:Message-Id:Date;
	bh=AJfH7LhRMXbzUkirDnnD50Xt0zDglISU8nE0IrhW8To=;
	b=QKEH/LUHWKIGcjEZTUByNRGzpLV+ig1HBElVfNy45OZJOtBPuTG73YYQzHXbOobS
	fqEDQPUD7/O6atRUE7FPk2Cv++BGZDlWGz2Sehmxnz1zf12TKjmllNAvbMbW7T3rpDN
	A/K/E9jFEgGW1mxcuGoQqclVH25R0vhSGyG7WnP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655852999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AJfH7LhRMXbzUkirDnnD50Xt0zDglISU8nE0IrhW8To=;
	b=EVssr6lxeMd2sYiJ+iuqux6v+tfjissqTE0ikgJDDS4LSq9Zs4o+SJI9J9KyEjyV
	2gLm0M2ON2Jlx5Miezvg+Fi3cJx1mJFfbuhB1enqZ+CFwWwaoW7QvL4oUx7sNLL2miy
	vbiZt7Tyg6gbgIEHss9Ju7LO9misfCAyXQ6M2nY0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818887a258-eb9ce424-113f-496c-8e32-e41600d52410-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4e18a7af1b03dab312c67ef602401635d2fc6000397ac49c6552fa94b9a6b40
Date: Tue, 21 Jun 2022 23:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655852999
