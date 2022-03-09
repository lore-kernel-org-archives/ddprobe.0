Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9071B7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646841684;
	h=To:Subject:From:Message-Id:Date;
	bh=AupD/ub74lG9U+EH1mPQyigGt7e8pvlXJHZhOPLlzpw=;
	b=ZVQfokAQrOHEKvFA7HwudOnhNHBQJmi+/kgpnR3X4OExQx9DeMA1mikDbEu0qAUy
	GWeFZc2SLTJR4SJlRZJ/ZKp1NSDv6WYBbO4Vvi/uWMmZYpOLTqgPlWTGzuc/t6N9lrY
	6VbQ+w4Wvs8YR9PFbQvMm4tp+3m6P99UIrGTfUSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646841684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AupD/ub74lG9U+EH1mPQyigGt7e8pvlXJHZhOPLlzpw=;
	b=TO/d3Et24JP0GnZvuQ2R/eNi4Dztjquzgn/j1jPVmQQUJL38UoO4Oiauuek+Y1/S
	IC7LwBYmG5jouVXftmVwbBcIpwtTjUAa+axS1LFufQ/zpDapacrqeJAFADt+1xltl79
	dnx+2SaKujgfDCmjMZU+ivE8ohJLZobrzahY+eYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f69e2fb-c9e4846a-5ab2-49f8-9d1f-3e954ebe1b36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd84fe1ba577c7967ad1be0f25e9ae8b90094928d14a0e3c890db7bf60c251d1
Date: Wed, 9 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646841684
