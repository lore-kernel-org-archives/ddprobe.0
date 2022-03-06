Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E0D23AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646577684;
	h=To:Subject:From:Message-Id:Date;
	bh=Z4lQgY9nkRVc7PCup6mJ4R7prRvBYe6FRqA5LDTc27c=;
	b=HjuwVxnzaRIGPFwKGEkhAtLtZQ/J5ioyAbZzJDmyMzyQYO6/52ceRHTzCYGSauaB
	oiN4RiNobEJ/4eN61fbJ53RVtGP7NfoAfSxTUnNaHqKmQsab+MD4DzSeCKcDxUwqtOY
	3Zmyr2lQ8VPE/GtBHkXcdZkKZb6Oxa+lsBzb1dlU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646577684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z4lQgY9nkRVc7PCup6mJ4R7prRvBYe6FRqA5LDTc27c=;
	b=XZmKUTY/UfTqOZE7JPO4mqY9P+OIgLzq4MHYQ/XmgY6Mb1U0/V9DyDf61KCrGalS
	SNXsGnrpDwSkdN4Rvi66ZRzf167kHs9pxvCva5Vr0nG335MNgrf3uYXRRHjoZU98AZA
	R2GnXunM4mmKo3/9vsGA0cyEUWBEF1bbeU5zNRQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5fad9120-589a9118-197a-4a5e-9521-b4333e416863-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed1e9dd0ac409c878863f2e4c201b925086bcaac079c31464108125bcad23e05
Date: Sun, 6 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646577684
