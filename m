Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE0136A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 22:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652567939;
	h=To:Subject:From:Message-Id:Date;
	bh=laEizA5AW2oZs3V++bBtujrboJztetKdMoILbwx4tAo=;
	b=JhtxVGU4vF0BSqtK9iATmM8em0kIY5YyF+dTP/H7jZiSZjsHOxKxuHAfDVG9GkO3
	SkC6kD054yDTnXnzwODI4XgIXYzkDfo/b7hUQUMq9i5wCFCQYfmGZQTdg3ErXJFW0Uj
	3EtmmD0Rji+VjXELIFroxP3VnXYc8NuI73D5oZT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652567939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=laEizA5AW2oZs3V++bBtujrboJztetKdMoILbwx4tAo=;
	b=jhWRzb67TwED4Yj7IYGnMaBcryKmKU2dJCaO5+pqACCiu3EzXfU9uYKqurNVHMBx
	svEseo4DcVYBHFxWofysvdTMObAsLEf4hOnoW9v6/yYIbO+DBszVUfG3Axw7NDiCr4q
	rQfayOrpinqySqETgcq4sc7ry09F2sXKF4CN9OC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c4b99924-d9f57cfc-3b4b-41e3-9e9d-59ce3be0672c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7425f2bd4e5575b264c2ec0f57440d8f0183ef9510ad819d876e7dd487ea764f
Date: Sat, 14 May 2022 22:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652567939
