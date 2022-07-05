Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0796C182
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 01:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656986212;
	h=To:Subject:From:Message-Id:Date;
	bh=Ls68aJzVWukpfn6w3glOWm2L4ULynlYSx9XbXWoJ9l8=;
	b=QtJeAZ3YjTlXCqpcnVEQBkTf51XNkloDpvRHIn0JC08pmBO12oq9XlU7KZPQou+E
	J/4iw/z0+rG9gZKg1ogLdR6yeEfv9JGs7eADIy+iWzyJYSiYveliaohuYDcCTLV+wLg
	NXQvKM6cLFg0Wyxdi36lCWCc4biOHWEHNwb8YBXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656986212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ls68aJzVWukpfn6w3glOWm2L4ULynlYSx9XbXWoJ9l8=;
	b=XEKVYYj2nxKOHSwkDr9Q3Jg2gsyQf+PRfGA2yaJrO67iwz87a8b4t65nB4zJKEIq
	Ivzwi5kQlwwDgnMz7vIhISkNT6XHSxet6GAyOtJhIFgoXkri1lfELKaqtAvGD8J/wwX
	OBc4VXjGMXoImNfba7QHoUfzgHygUF2664/A9scE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc1317a9-56d00220-88fd-4c4c-9388-2335fa12dc4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a8331772c464d6e97cd79b79fa5e87ca40eb045e92cbbaa0eaeaccb665ebe6e
Date: Tue, 5 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656986212
