Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133787B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657357612;
	h=To:Subject:From:Message-Id:Date;
	bh=oMt4wa9uWK0pUhYsHw5Ep3FBd6KVn1mgOzZ6hZp27P8=;
	b=bWb5nI5YOZ+aJq87aBdyH1hlH2Ei6ypLw0UQGuXKcBgCB8x4B5Z5D3WwpV/F3Yjq
	QL6gnNidGxrmNe7JEuhoEQ1eqKDPs9cy5C1JX12TlECs+K/l4vNmmi7K1w9Gq/24LxP
	AUEtxZZReDNwNYclQ6DnyvGvrysd5Rgn4ypOct6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657357612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oMt4wa9uWK0pUhYsHw5Ep3FBd6KVn1mgOzZ6hZp27P8=;
	b=AHzD1anFTzyAgF+3TmmXUdB8bnyRZo7cjzve0sgd0Lwr09clVkTNU/NOiTFqg85D
	cG67WfHx3ycVZYIEcRh4hA2YczKxnwfG0/qjh2J3jDhgHlQJk7sTV/35RgazWPk7PEa
	Am8VthWwMzNZiMLGZz5dEFkOAfN/I2QsLbA/LSzE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2363525-1004594c-7bf2-45f6-a78f-ac37b7137683-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f6ccce8ab15ff76d17623e44018508bce30a2c10c71aa48eb5dc86232a3fc66
Date: Sat, 9 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657357612
