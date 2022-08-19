Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5017646BC
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660935652;
	h=To:Subject:From:Message-Id:Date;
	bh=RsQGLM8/T6VDbfHRIdT5j7z68FxjM5IEO/AfqPJ2Oak=;
	b=bY8uFGg5r/PFELmZK43yqmqyWSFV8FrR48Yz8XrHZR8IznVEN+6SYgzMPpn8YJHC
	NXzC6N6xD20kEtbQRGr2+vGbTJbxrO1lOfiIbdzMubHbFhMExKljP9xy7Mz0lzAplVu
	xjRzMogUVzPp5NJhmPfdip+yMRa7hLAiq0+r5WQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660935652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RsQGLM8/T6VDbfHRIdT5j7z68FxjM5IEO/AfqPJ2Oak=;
	b=CmXH9U7xGn3ImF/rOqFvflZuR+OYcuMJQe3TTEhVzroH2So9wIyfs0YRdBm7mfMN
	uLNYT0AizPqmKmFEEJjs8vcICq04+5PRO+1cdAP6G0mKMMaB/bxAGpv5ddePwdOu5ra
	RaLziww9iKYgWGNVFX3B1XOg24bX4UwZ1uOYTKIs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b77ac4f9-f5a40a07-10a0-4ea0-90d0-435d1e791bb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e5732d09da2dab9e6513038c44359c2574a8279f68b3ec442f150416bed1cf6
Date: Fri, 19 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660935652
