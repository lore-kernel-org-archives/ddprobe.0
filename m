Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E79D48BE
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646739984;
	h=To:Subject:From:Message-Id:Date;
	bh=55FuG0dlrBxb2wbmq5Di+kOOENaESVzQvn7s64bhE0U=;
	b=TxeqiD8NoAhrQhbEI4gIhvjlD0yE3gb4eIQRNHpPyl5qp+4oXb/hhedn/GqilJCf
	swDlSRejOmbxlh50SqlVnaR7Ti0G3JuHCxN7efUQ8FBalVYb5sy+Nh4+vRsHf21bxlK
	HkDFiDcqykVUkz294DJi6zVtihelaasTK+JD5b+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646739984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=55FuG0dlrBxb2wbmq5Di+kOOENaESVzQvn7s64bhE0U=;
	b=AbSAJ4geyMDpEBh8gtlQeEg5Ip7/z/qJe06wm6fEenalaQcsUCB78xqf0sMWpRVH
	SFZqjFW/suT75w+fELqC3H/wpXYRMNvn8I8CDuyavztagADOe3eGufak6sX5kEJ2QkT
	LcC6KjHLuHL6oAez2y4P71q/bm7elJ1KeoTVDOOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f695a113b-7b743ad9-268a-4dd6-9503-9a55bc0d1d22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 785ed7f8e1fbc7038fe928f919fa9e98bf8d8d1eb5cf87f98c8bf31616087b16
Date: Tue, 8 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646739984
