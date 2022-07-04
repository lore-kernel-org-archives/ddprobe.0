Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF5B7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656974212;
	h=To:Subject:From:Message-Id:Date;
	bh=xbnEcCFcHNixbUn/0+sIMOnniLhZ+naZL6e+mU9aA30=;
	b=bn6zYneuOdqDpsnZfxTFRMz0XOWHeoyHRRM1M8mu3zZdWWtgYHl0ExTdes3E1bLb
	gvBOC4jIW+tbhi9QEBeg1Nx0QtspoBI/kBj/YHWONxkwyxSbEmzPa3dqgZdnKIqMZPW
	Mnp5ibyJeZzCCTARpnz/3GFqGfWx1mVQATxaiU9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656974212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xbnEcCFcHNixbUn/0+sIMOnniLhZ+naZL6e+mU9aA30=;
	b=eyoy2gUdLHFi1l+Gaw3VYOMX7lci9pUTI2E9imN35zVnZD+rEBchvLfLFhLcVa+3
	4rHV6U8jhgpU+7QW6mx5i4CtxfUMI3YDkYFLtvjZdGHTQxFkbbmhb0mNcgzosqpVU5Z
	Eq1q3lCBOkblzrK5ai3rvaTZhkArdxyrDupfWdW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb5bfcce-278db291-bbdf-49a2-aacd-55cd390c02ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69bbc4b2baf17091f7631137f6109b2dcc0d9360a21521e332bee0274b841342
Date: Mon, 4 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656974212
