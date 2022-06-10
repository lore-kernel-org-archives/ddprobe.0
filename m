Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1647A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 08:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654849379;
	h=To:Subject:From:Message-Id:Date;
	bh=gvqRA3gYZ8O++FIpBLvt9AsDYbqDhXXdmT+42xu9sF8=;
	b=THybJIKwHA2EBCiYt1FKyDvRpKJcrgiCLJMAA2dqrWZFj8gdH2h6lrDW5TAZs3W4
	YIWPC+9p83UmIw8xBQKlUdpPc4O7HYsjUwTeXaLLeegkPe+znMBlLC36sign5eUCVti
	sGDp13t4alMSogyZUns1Zm8eRnT4GuKQ500X/obs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654849379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gvqRA3gYZ8O++FIpBLvt9AsDYbqDhXXdmT+42xu9sF8=;
	b=U7QzMFtMKswF93pVitHh0QUeCH6n8l3IWpZvEvH1muI5403ftry2Uy/NG1tep53B
	9wvGqX6C1c11wAEplX2nXQgZoH285WHNF+38rJRVObAj7JlI7qy1HHCEQxspy8YcYaH
	Qz3+qOgCvLNVj1TlMAmmMs5OBKFGB1ndHYLNefRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814cb59bc2-03079acc-328c-4d7f-a83d-70735ba9ae2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37fceb6ffb45fdd84522b3ab21debe84b8e16ebdbe406bc1259dd2c103c00aca
Date: Fri, 10 Jun 2022 08:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654849379
