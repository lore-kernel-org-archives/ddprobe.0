Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C082F35
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646703384;
	h=To:Subject:From:Message-Id:Date;
	bh=AookhblUoIgtQJ+rj4b3TCuwWO6tzGyexprBB4VGyiY=;
	b=iqpfJVjNPrQG336iYGh5OTbngKlbatdLcSzjkZt2sUgvRcCZvxppvw+/VVsi0m61
	JfjBwcgnEwzXyOk//p5aK87DuBTC3IWucb5TvCgUZytRwEKDXAotF9ifLqaDgwhwLDF
	cLme3mEGsD4sYzNHNXecMOdtokaZQsI01mH2zqDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646703384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AookhblUoIgtQJ+rj4b3TCuwWO6tzGyexprBB4VGyiY=;
	b=cn2j3uHyViarrVgjSUT5JvfJPgb61en+GyXoYFQL79DsH5VGaJ6jvg7HY9hiRYnB
	2PQblaCa/ka2P9VDikBOMQLcxg5mU90+dTJuAfTisA8PH2OZR1VkJpEPCHbpSacTm0v
	Ok2AJoQdOP9OBetJVKZHqtBrJ/A7CTDiDgVwAKdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f672b9894-42ca0179-cfc4-4721-9c48-69618aab29d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3721495bf8effd48a06074eb077399a9c8f10e1fad0e9f3bad47a8c057aab8cc
Date: Tue, 8 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646703384
