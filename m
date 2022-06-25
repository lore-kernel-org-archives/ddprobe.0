Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263C07C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656160612;
	h=To:Subject:From:Message-Id:Date;
	bh=V+l7ivmKsPluZyVnOewd8p5C5O9KfDEePWt3ik712mU=;
	b=Iws7QF+H5X7hFe0SLV4rvIHEWjERFydTivqrOj/QCh76fTmc8afGXKmqRiMkjWev
	QEcs2GeVyp0AIjM8emIOOwkUOH21xCM9z06uskCYkidM8iEalNJo8V2WZSHYqKY/TFU
	Su1GdWi302EShyXxXCc8WDuTjXzNOhRyAdP2w1Ec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656160612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V+l7ivmKsPluZyVnOewd8p5C5O9KfDEePWt3ik712mU=;
	b=WFfsCuuvrW7L6RqxhFQUujBb2NWkGfSVmwIycLjygV3VRq6wc0pMnO9mLDVVi4e9
	5XuJDWTzbyuI3NPyxmoN0gbdhcm4cHaj7AYbh95c3Sha5PKxOJaD5AUCIeKJSCgyReF
	1Pz4q4zJKAQg67i/se7vZLMAIib1CbQdNyag/SZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819add6fae-79f93e73-7269-4616-9951-69db5737c711-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b92cbe0204d0e08f5d87cbdf06c84341fe6bfaa47dde2259dd10ea736a3be0e
Date: Sat, 25 Jun 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656160612
