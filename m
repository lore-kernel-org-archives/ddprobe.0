Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2863B1FBC
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656763012;
	h=To:Subject:From:Message-Id:Date;
	bh=u1eRzc3MgwhdkeV434YgyOymgEuPZ6+TJiVJhSOuA7k=;
	b=PprB7osduLQoo+BgCYmlluow20NMhoAJd4w/70JW+v/YKXo+V9lrwgfw6YWrc0mj
	sOlBCzIyIMHZXi+I2REddD6nBXzFajnSYCTcU82+KbynjE2ihO7oX0oP8rlyB3SAs4r
	DeI9cHYQZfxXgsyb2S0VhCK3B5WUIQwcDUpLGva4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656763012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u1eRzc3MgwhdkeV434YgyOymgEuPZ6+TJiVJhSOuA7k=;
	b=RuXTe6utmRv1k/Lte30bIn8BlYQnmSxYB3cnNMv/6p3EoM58Lta5y8vPi4e0Rxpn
	Y5TRm+VZyR5dYgCONvli0KZOX0bO+ALghiGXmhLnNDj9xdLxo38rnGah5y+fNq5XWMF
	KGhILZ6+U4iKwFiF/4gSAZDX9v91l9fvV42E7e5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bec554c3-7a0feffc-151a-459b-8f3f-4431335d962d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2bd60c02e9ce40b117218076d0b2ddf039986b1739f34d693412ca010b7b8c6
Date: Sat, 2 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656763012
