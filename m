Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99967437E
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 18:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648491538;
	h=To:Subject:From:Message-Id:Date;
	bh=kKrNfoq1r2bb0Y3EkunxJW9RbYUAeBLNGfPRggnHwV0=;
	b=cjN7gnL8Z8XMaXrYCY/OFpbInwmTAfDIsdwcxXtfm/RL3b7FzFZ6aejVTdOvEThx
	QYyJykepyK6Jz6V3qyX8XwXXDMuoM9pu0BaXYRLqfTIIG4bY03dxOzI8/VQ8hoAzfbX
	YX8RIOAnkkBwm7WpvbxsHC+/ky4Ij/TFtjAKCRUE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648491538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kKrNfoq1r2bb0Y3EkunxJW9RbYUAeBLNGfPRggnHwV0=;
	b=juMTm3AoknetPPM6Etx4mYgK6bK5LNXmvyCrLtefMNSAZR5toerDHo4LqeH1IoDa
	BH4S+r/uozthUNH6DfN46jvVArRWr9+hu4Kjc97Rhe/gaWjiYPyT1zhWegZ2UbxD3RN
	KoF8oPCTRwONUsxs8Bmeh0hehIjwBkaTlY+IDWpE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd1c0a7d0-846b672d-567a-4aac-9e89-7909f6f63e0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d8e56e1f475eee675180f34066db686288505f5d5ad40a856a18629695b3f21
Date: Mon, 28 Mar 2022 18:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648491538
