Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C26323A1
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645796184;
	h=To:Subject:From:Message-Id:Date;
	bh=rHUR9VRiqk8cRZpAwOX6b05NQtPHs9N0+Bxr9+vdsSY=;
	b=VeXHPDkWMuBxzUwOxxNhxlnt2FxcS0po4G6joS2YWM7rfHBJNIWmBl37f7kqWNsU
	2uP0zmsiE5sm0Z56heKQ9YRAiWXPXGFWHz/iXUq5BsTLrvgbsMu7UnBg1wtQt9Y/dwj
	WtiqHZ69t+LJmraU1R/Q5Qd7VFBR3MQE+1gvD+d8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645796184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rHUR9VRiqk8cRZpAwOX6b05NQtPHs9N0+Bxr9+vdsSY=;
	b=OI/0pJ3DpMlG0jo6katwbBC1mlKsQ5K8p+Ec6x3RSdNqznrsnyZNXsV6HUNhhphW
	Y0/Bhf24AznPEP++uOhknWUtxChro+W5mw0jjrMAcdHms+Jfw39RflcQwNAauHivko8
	qO61s9bkdZRDtiZTMVsg7UqWFZJUXoigAYGtv74U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3118d2d6-48662821-02eb-42ae-b6ec-77fad2fec332-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84168573bba0d9d3a7c0bf8798c356d9004ed525358b122c536569bc1750b7b7
Date: Fri, 25 Feb 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645796184
