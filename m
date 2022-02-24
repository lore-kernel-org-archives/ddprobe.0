Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69E01373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645683085;
	h=To:Subject:From:Message-Id:Date;
	bh=HzLN646cDzQBxOOyjZQNCR039rgctHMbWJQcTVzUt6E=;
	b=QGfdld3OuZ4av7au3LSODBFMv/sl/tue76CYwsnoRjsvH86RaMKfUNlTxWCDr8st
	p+59gcl7ZGykyuLAlB6Yhf6TqXQV4h6Q6YoK8p6rXiVHEHzpTP9gEf9MdI8QN7vmn+5
	F1TmJs8ZtrMG/CQtS+8f285ozlvJKtojNDlPu1Zg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645683085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HzLN646cDzQBxOOyjZQNCR039rgctHMbWJQcTVzUt6E=;
	b=WXKsKlrJ6x1qyqD/kFrV31z9wwVRKudiZCfRwYaIUDVN8JWzP3blpx6PLXKzo++U
	klgGuQ1sIWqMleJQO1IWU3ZpeIhY96Wm1MxZY/9d1RY3J4i88Tcr8efx/q5MYyS7Ewf
	paSWO3BaUx48O7f/7sn2bWMmt+20HGMZXg/M/W2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2a5b0db3-03bfeb3b-178f-446c-ae6e-3e660ba4751e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af2a38c079298ed4d595f74be5b9f52f7bb7fc1a875f20f741a8f62b5097f701
Date: Thu, 24 Feb 2022 06:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645683084
