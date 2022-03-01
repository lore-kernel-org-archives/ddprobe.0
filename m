Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6A557CF
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646122885;
	h=To:Subject:From:Message-Id:Date;
	bh=o5qP7q9SSNLM3ThS6hjVE/v9YLjvSdO04gHea6B2k+U=;
	b=BC9g0TFQS2RDo0oCFA4sGmX8JhiouexLdIE4BjqcJqtUZkAwdA+gplc0qm38sWGJ
	SnchAIN+Yufo/AjZv3ix8WOpXqfWvCEkyiJtozdnsSORROXj0ip8lDgfzw4J2KNWIGq
	QQt7qeDuvpBaqL31EiRmQ5fMuq+CtvTRUPX2e/W4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646122885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o5qP7q9SSNLM3ThS6hjVE/v9YLjvSdO04gHea6B2k+U=;
	b=ZcafwmREcyWrKHjDhy0Dqk4kKtKkBaCjWPNo5AA8lFM9apqmBoKem4DjtXLuODiO
	X2bae6AvdgWCIHUMEH7A4eBU0Aujx/+Xaj7nWX+aYTbTqKvlJyLfNC/u/rB4Uko36ZU
	HWENIqSG7ts0UqVENd0WAuUyqZP+DHA6WkV7sQYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4491de90-2f821f97-59e4-48d3-b5c8-ad5e5a656777-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 117a61247e83bd6016f8cc78e4b696d25cc60cbc9f2c12615a560ca80fe08db2
Date: Tue, 1 Mar 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646122884
