Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895B4A4D
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646396184;
	h=To:Subject:From:Message-Id:Date;
	bh=mINTL4zG8ldcoLHdKSO6d48q4dOG9qCy9teQKQy8vG8=;
	b=Rdfu/mnSwlNY1EsoxViM14Vni8Mvij7N2JxY9hbDH+17EnoyDgJEq76v0W1rQdac
	wSc7PGPPeCOFjBhgZ1SgxTF5H5RgadEv3rPtG4XDn3xgW6o00IhZ4eGRq9cQLdhMb18
	hLCFv+7K1X6xI3thyKzOmIaJeELm3S8CXj+Bb5Lk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646396184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mINTL4zG8ldcoLHdKSO6d48q4dOG9qCy9teQKQy8vG8=;
	b=Kq8XosePdCljZWfldfxVZ6uyM74hQHLD4lYn4F0wvSPavVr1ifP68KqOJO7u3ugl
	3/Z1xWxl9v8V1c41yDFzdX2/eCnpzr12VcrQzZOtDrhKlUxLHOHmyWJ8eK6lMB5fajl
	/cF6DIn1FttoZhtMkZxZEOlp5b4HOrZENlGbkQtM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54dc18be-87d30f0a-99d7-4a70-803a-853d6926e417-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c135f5e4e4ad5500988d1ffab27b33333e19bbc41602db8975c78f66c652f34e
Date: Fri, 4 Mar 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646396184
