Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FCE7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659032452;
	h=To:Subject:From:Message-Id:Date;
	bh=+WeLpOmR7GNr2IpJB0muVyenRV+9aoAXwb5MUWFHB/s=;
	b=Fsnhed37cttjs/1lHfSLtYwTO4rJ9Dvhb3RsrGAj0SjjFqqA9zm9w74q0T3EA7LS
	s8+H4uBjyqIvx+dALq0b6T5EwoiDUUaJmYomAs7hsdorrMbixEWsZsYkEi9gG/xGgGB
	lbJZPF9WgOrq4MTVG/jRGI6+XbmZSO6F1q0x/3RA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659032452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+WeLpOmR7GNr2IpJB0muVyenRV+9aoAXwb5MUWFHB/s=;
	b=kiXJG1JAh9LV6I6nZO0DlVqoSc/Ip/bsLFSIejX1hxZg8O4i46qUwkx84eEZFw+g
	gu9Cwn1fz3sRaN7ySfpWUy1U89ROG9Rut401308+FEpP+EEEFrCLW2K92RFMcfJEuNs
	Y7ajT3SlqZ2fWrNnTtgA0phDLtozGf95rNvElCw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182460a3e2b-b5ae03d4-ca4e-4949-9424-d3b2e00f0d7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92161d60fccd5e53d67f41d13b21634ae7229097ae41a9c96ac240ecb4893b76
Date: Thu, 28 Jul 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659032452
