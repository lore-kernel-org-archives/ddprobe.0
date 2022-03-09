Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E505107
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646855785;
	h=To:Subject:From:Message-Id:Date;
	bh=tWSmTu7EeeNsIAeB0CqdymE2CjZq88EC4pSgDz6JaVk=;
	b=B/VkdjrgMIQEH8Fr3F1742OtmjWRVApCiefZr3K3Fh3IssnWZNBF7t/uxbx6sDwM
	Nvdi+MJDmcxMR4KXRJ4593uYRC5eU3EroFtPegUuTcx9d0LigXRVYpquL1K7SJ6a/AX
	xvw9V/mKgLZLv10MqNlVNSqOLX2McZqgLizEi39s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646855785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tWSmTu7EeeNsIAeB0CqdymE2CjZq88EC4pSgDz6JaVk=;
	b=LKhz90yBbcQ/9Hmqp1wZme+/+zZntpmEERFQHrx/Aatr7L8IZVLGyHpEUhcc7qyx
	f6Yz7EN+6bh4MVdP6rEFMU28MDGamx19swh5KKYEVgvlPF6/02MZT+1Nl7hW50PM31w
	BfpXo8oRJq2CgHKTOUlDO7/ToLiVgvQiZqOO/taI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70410976-d09f5588-f130-4365-97c4-916984120276-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3acc2b4efa2560045897f365c8537f4f2431ee33d4846dd2441140885f217b53
Date: Wed, 9 Mar 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646855784
