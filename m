Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF342565
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 12:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648558678;
	h=To:Subject:From:Message-Id:Date;
	bh=oZWiGg6RsoZCZjeCVdUCho4JYMiYghm15dYeOAfUXpI=;
	b=D2tcxNiCNMKsNylSefPSZCdGNCon3GTQsFrbIVmcD6cfusIrOly9SVBQlXLfUB4M
	pcIq2QR6LXloMXJJaKju9+++qVGWTB4mneolb0Q7r3eVaf8aWBxUTF4yXJSwiuOb0jg
	bSPjVvDdXd4/LcAallHMROa99wi/0rXfRmhD3jfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648558678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oZWiGg6RsoZCZjeCVdUCho4JYMiYghm15dYeOAfUXpI=;
	b=OBya+4dhkCVKZcFeJhH6RQxABQ4UXiFMSiBKLFeyJlE/j2/XjgfqSCdGqXBxEbyM
	Z5El3DRYlYH/bU+OHULIJmwZ1vVg57vv/LfI6utpGM5+UTpn9PPt+dV8jl42MVOseOT
	zHUEgRl36t7iIxXSPXvmG9Hxx9P8dUQ+9XQBRDns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd5c120d2-d1ceceaa-c935-4904-999e-4f888461d902-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abc68b7c6cbb7951eb30ebd044928ccca7319939a1c365fde0216984f1d7f014
Date: Tue, 29 Mar 2022 12:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648558678
