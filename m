Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B41A7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 00:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654907759;
	h=To:Subject:From:Message-Id:Date;
	bh=tBNBblfuBwL/aSv9ljrvYBWJksPnXut2dPEu+NvCJME=;
	b=TxjDRjqOap1vXzJA8v1AIC/AAY7sRNxBK8ULon9pd3mvcdZ3hmK+VgrSzG2ivIYG
	jY4a8Aq46IReyaE4e2YhU8DWIyzLSj+3a9NF7OpdYsGaz+0mQLQK51BgidD7tYFOjps
	Vw607rUSE+H7C542HnyrSRVn3cnf0cgL6mmX0WKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654907759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tBNBblfuBwL/aSv9ljrvYBWJksPnXut2dPEu+NvCJME=;
	b=hL3sr6QHS8FhD/4olrdIxxw8IGiHnD7YsgIFjNn+AUiM+7lJBhLuVivKs9JVx0vA
	6BAIBi0Ir8PbI/XXyfEVv79vmGcB+eFVSYLCdnMXUwrwkrf9g7eJYNOrQqWZ4UbB6Am
	cdlNZH4Jg6scxZS19CXokvUh45MIUg9ibLk2nZqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018150306ace-a6bd1ee2-ae59-40b4-b9d5-e8a4c99b9a25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce3d2cb70e2f22275908525f7dbf51bd4911c6c2101f3b4d86c6ae869a32ab54
Date: Sat, 11 Jun 2022 00:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654907759
