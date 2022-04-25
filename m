Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD52720FF
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 14:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650897238;
	h=To:Subject:From:Message-Id:Date;
	bh=2fi7e5UXFm3SeTOApS1OpBTJzGBA0g65apiVt7YG5hc=;
	b=ZMIYzaVilu7TQGqbijUwtufLETqLt3Rc63YX3TvpE45nVkicagi7dwG94IjxsP/j
	cbrVFf6MGNFKYomQeIHMrTIgvoB4CCF88BCc7PSsCD81Jsby2FOdS0ks2HNoYbzE1V2
	TWqJbUI5460qw9lfgTHnk58qSu7LFoPv4QgLzIyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650897238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2fi7e5UXFm3SeTOApS1OpBTJzGBA0g65apiVt7YG5hc=;
	b=AYgaGkhFS4QhNYbMfXwK/BKc0sCULUapgkHu7j5HkXGh+pbqSM9c70M+hKcc0QEc
	amKSJK8rHt2KDHK6hJ6UnEJjs0QpiPVgjpKKpVVdRJRCUle3fezdaR9d+e4uSqxV2mX
	ANhQXEm1UnDYNwb7ZGaLp/ecLQP25O2lFexmpPaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806124b8cd-8c6da10f-f333-4539-aa79-1cfbab9b7369-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0534ac7a041976f717239192ea2386be0237058e03831a6626d61ebddbfe414a
Date: Mon, 25 Apr 2022 14:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650897238
