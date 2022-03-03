Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7BB036B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646270785;
	h=To:Subject:From:Message-Id:Date;
	bh=ZM+swjLGc+qcVbzRnOM+joqEaBNcxoUmyQq0hApJRSM=;
	b=IGLk6v1CJiGwLGHVFnbJ4vCs9SH3l5ABiZWqTmRp9T/eHY0jL2MBe2a/UIEGGAue
	lj4KsXuYWACDNxAfvwVs6uCMSMh80n6PEeqAlaxubpDBYp83LD06MYEijSZU40ZwYHe
	EMNrwbiUTsr2huW4MWvuslDzerhJZMadCslaVaAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646270785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZM+swjLGc+qcVbzRnOM+joqEaBNcxoUmyQq0hApJRSM=;
	b=B2J0JWpxyuT7XQgIHzP/4T/aamKjwmVIuwwnAhhAgPxYuOuXA7z0DgghC1jh04ML
	EFHS8PYG4mlDXINbYRuy8fjaPbAJjt2GrreigcQTQkr9xfj+FiMDox3laEkJ8pvTn9M
	p9UsqCfLNYNC+N9aMLeQ1OFwgD0kKy/2FCPxMOeU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4d62a552-e797dca1-002b-4daa-86a2-436526f0a4c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65eaa053cde2c61b59f8a701942aed49d957ee6e71b6f127b996a48c99d576ff
Date: Thu, 3 Mar 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646270784
