Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D0D7C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 06:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654928699;
	h=To:Subject:From:Message-Id:Date;
	bh=nD+3+fENxjrpQwOBt01rt2434hiQR03Ml3WTw+aVtQg=;
	b=N+7UKkgJG1MPNwHzuC+Pc0x9th0hHnYPzmarFEhx1ggg8UtG2UxU0VWzchdEF7J8
	ccPQlNRHKEOzPKqu0NqjWIymJlog7BcbQ+IioYnOhX59PAOWGX6E+uK1DZ49d71nsX5
	GHSPuoi3LcQ1yWMPjAmh5NTA0ZAGbhz6ZMsQqED8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654928699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nD+3+fENxjrpQwOBt01rt2434hiQR03Ml3WTw+aVtQg=;
	b=i4p5NNrhP+e0KGHGTM219CYy9XvzYnlb5LCQpZr9/iy3d02xSNIXMyolZT3kEBuS
	gZdmOoW9tc3narUhJqFW+8S6Twvz71fKk5xwMnS/JguiACOlcEW8FqYopN48O0XiJ4M
	yJ/CMkq5DzrgbootrsDCh7li+O4FTiD9Ky30zz6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181516fef7a-33d2a9b1-0239-4cfb-be8e-e8dfd4441685-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e94b2dfc5ef8fe21c6e77df0761011ebaabc7c0e57d187c297666dcea65f1a97
Date: Sat, 11 Jun 2022 06:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654928699
