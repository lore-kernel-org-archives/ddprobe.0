Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E919D7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 13:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654867499;
	h=To:Subject:From:Message-Id:Date;
	bh=EiCMkrO4o7KO2PHscRqeCNqYyydWplBMkE51QclxOC4=;
	b=b3aG3prloOuisnQTqZB3hfRQja74vAdWNoUH7owY/J0wRg4XndorWaWt2Aa38Do7
	ZCshQKj7VNhJVuzv659zt8QE9/SEjB5gGNqhoMO+kxbuDKRiR9/OcVO15dOdOeen2ke
	F3euVuqeH56WuPMned3/UyQl3YfGjlUYQeIkTaIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654867499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EiCMkrO4o7KO2PHscRqeCNqYyydWplBMkE51QclxOC4=;
	b=VMiGWUj6+TPou04IYtkQdkbfuEoMe7Hecusx+XKitSwd7zdGBW3qbwJMZTS3yAdN
	gHLqcVbeZp6GGLEJw/vEZV+41fRWAaA+qZIi6VkapbjezHyGLDzC2uhxXxLLBEzNpz6
	ZW7gImHHekjrwUCz/+xqMBzZjeJZpUHc/v1yAUZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814dca18bf-a22bfbf9-323e-4b6f-8c1e-fa344ee2f8f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d23bb09e05cfea631834ab8bd5e8ba79ab7e42ade60919715d3cc5c54100b642
Date: Fri, 10 Jun 2022 13:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654867499
