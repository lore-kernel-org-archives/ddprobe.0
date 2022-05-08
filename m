Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2C72F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 23:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652054038;
	h=To:Subject:From:Message-Id:Date;
	bh=oQqQYmjdkMHJSN07UISbW/+fZ545/rHlSV6nZxDh2Z0=;
	b=IvZXyjwl/rnCpGxTxbcUQsG1kFnQg/EQ/gxNBc1vU9OCXUGHnrfVBahPD3p8xfzb
	kfj56DP3mXAYb3tf7xAcXr0nvHt96JY716iY7zoF9JUZ6c1KFae1/o48/NMLthQH7Qi
	qrSd51KCEGZPLD/hMzrlwbO/WwBVDqQ2wisx6esQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652054038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oQqQYmjdkMHJSN07UISbW/+fZ545/rHlSV6nZxDh2Z0=;
	b=bGGbdlgFOdP0S0wBFpkQntt2iWpcfjPHsjKWYrJTu2K45eHsMN/yj3zDi6K2omwV
	KwSK6ZaaDOe9YDo8G06DhEasvzZ4Uu0hKCoJwHmUaDiUFrZnwKwbtjKpfpxEywQ/wVr
	A+yL2gVRuczlCulxUgs1pzLq4QHLtjy22iLxO360=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a6181733-6d0e5a4c-baca-4c14-9474-9afea1e76e63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0661ca23c0827d6a8ad93d9c32188d05ce63e2cce2cba7bbba439413d4dce5f1
Date: Sun, 8 May 2022 23:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652054038
