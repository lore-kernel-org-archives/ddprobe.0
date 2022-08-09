Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D2C23CD
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660062652;
	h=To:Subject:From:Message-Id:Date;
	bh=YBAbxs324Q76b5+QoRnQTfB7Yv9u3f2NCse7A2zjHl4=;
	b=DBT3Ihk1Ja76cleeSliTKZYN6UDCsnixBANxAICVFmHSypyfe38Yt9b85/mgWVXU
	R/0m8ulJRJm1g1ggZbV/vTaFb80/nRzRzutkImiX9SCNWgDigsm72peJe/59zjTvbqB
	D2P/oBIUyX79w+rA5NEm9u+KPO27Jfr0moikaLwU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660062652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YBAbxs324Q76b5+QoRnQTfB7Yv9u3f2NCse7A2zjHl4=;
	b=i0DA9OfjsERSL3jD64gdcCAh8ICdf2xW5UIDTAl9eFAss4w/WkhaDqJ3Gn/dTLUD
	MCJvbqWIzt9WNE/x6QhFU0rGD5Vd3xMGIJtlg7YEEXLiLjuohON6BwC97kCDyJt1w0O
	xF+rkS5JjOOEP6GX+eF8XJ3iFXebED6EHix3Zp5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828371d870-2aab3477-e49d-44eb-a8b0-86fd75ec9cf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d256b1ec61ab02edd03ca0c1ff4892c1dd97aadee2f59ce04341fbdccbd5c340
Date: Tue, 9 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660062652
