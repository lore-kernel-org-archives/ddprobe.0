Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2400915A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 01:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658455012;
	h=To:Subject:From:Message-Id:Date;
	bh=PVjwXZksQydLYW26xyESaYue+WySE5Wr4z8ylu/cD2o=;
	b=VpZyYjgCm4oqeAeUPddhRhgXtJ8Xz1y6VUnDiytFb35QtI0AxEg+vhWkkZUhWkkz
	WKWHbIlQ8EVkpbEsCAwhxnWe0f6zNwaE70hjbqOBW2wp0ehmEOO4kJq1xqBL7CsdwZV
	frNkNpAky6RQTUMjfjxChNv1uvuuDl6yaT1ePxuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658455012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PVjwXZksQydLYW26xyESaYue+WySE5Wr4z8ylu/cD2o=;
	b=bmwVvsq6b1A3Fb0TugpBcZd6dptgmqMt7RkMsv+8ojMbhKvsW85F75QC3VuPkiw/
	xfpqohKa/B/Ccf5k0Aj1YDWdOFXXVjhtdohS+kmqy/DWsdQt9TAE78kng3Y0YX3MDoa
	pUofZ7E/fj3c5cBkS1hqQcx+HbO/J8WTIoOIGv9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182239f33af-3a192479-238e-4f69-9b2a-81dfd9389fc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78bc46fc75feb2c5245b24bea66fbccb6994e7fa601990a7649a24ee0ae627cc
Date: Fri, 22 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658455012
