Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D26A632
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 10:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649415538;
	h=To:Subject:From:Message-Id:Date;
	bh=1EmiKNYlISAm1YqfcNNAo8jgb3MI+/XGliyR1q4F/Ys=;
	b=gVF6sXxHA7UqHWqHCqcHVeJezlK5yJJX+ZiNMZkJh4qRYy7GeWWdSjYNYwzpGGuo
	Ez2PMNpwfR4x4StR7qRyvoa0o0G2TGJjnyEfBuSWw22oxdl/hOkZoxQBFD4E8UGw/d/
	Db9a1x7qmU2xMiXOmS5nJO6u3cNNlixBq0Ken5BA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649415538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1EmiKNYlISAm1YqfcNNAo8jgb3MI+/XGliyR1q4F/Ys=;
	b=lDcii1xBatDha+5AoCuZpdcozgI/rDnO9J5i5QfYAbpn2wKVqk5txYBoQd0X5F11
	TOr4LOSSudo37qbIAPQlP1nfukbWWitdrjt+zdrQS/rUubci0Gu686+PzPnj3hH6MiI
	It37AUwBc8h/+cvZUaEV0kHmlmaXs/TRmgCp0Cvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018008d3c6b3-57adf13b-c0a8-4e87-9684-ca6ca811c46c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab993f2f856ab7ca71e2f0dd00fa0fdfa9b16514fae9cf4aa7e045ad955eda89
Date: Fri, 8 Apr 2022 10:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649415538
