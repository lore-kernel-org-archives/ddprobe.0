Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8D410E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656679012;
	h=To:Subject:From:Message-Id:Date;
	bh=9Bz98Ar+OQWiJam+sSF7yajejBALu3BRnCJVAziv/e8=;
	b=hZGKuoYiJXvUT/ghVnqpjcuG1QI9Xs3S/uvmFOWaB4A17vRPgGh8J2MC3rXCJH0w
	DgLeh+Ton+lXpmr3aRh3NAdAOwGTqQhGz2/MXUzXOhgDxU7Ba5ZIePGtaJjFTsgzYNT
	0ZgmcZMdee93gJoVU9HiamaVxJR9wlrls5I71SEE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656679012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Bz98Ar+OQWiJam+sSF7yajejBALu3BRnCJVAziv/e8=;
	b=AOLAScVkGjr4DxuG6/svCeZ5eUcTsia7daz/DGscRFhkljPnmahY0KQlMe3ErXQq
	2lhRDwzZ2JWgL/n346S9N5+2bl59qh+HM8tac85B3RATCvnrSRaqhFLme6uk4qZxIrS
	NGMIImYSq2ai3wwk/fdSJCkxD6ngdJdctSbnvJXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9c397ee-da4c6ff2-1d1d-4a66-8680-cf5f89ac420d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e94d2be72b474e0ac06ab26822e32747e55f93955cff9147ad33cdc5d85bce0
Date: Fri, 1 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656679012
