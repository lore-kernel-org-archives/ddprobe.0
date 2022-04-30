Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5872B46B1
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 12:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651322518;
	h=To:Subject:From:Message-Id:Date;
	bh=lLvwXw7TzxzQLTj7ENRDNHe2A3weGNTp5dLSb10qKq8=;
	b=AaYfNYlYMnTlDDQAUpHOkLRx+WoCxmfvF83vJW+SOpFzhSppGd1b82Cp6i0oAIlz
	G7lKW8qCL478/KlkcvkqC35IFku0jjUxzWDSzOiWiMK43HiHDdiRJDOqOnrd0GD3kR6
	OzoeRUQea0YXzOTVHfsZ67RHT5kLvHCZkvNnTERE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651322518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lLvwXw7TzxzQLTj7ENRDNHe2A3weGNTp5dLSb10qKq8=;
	b=jajG4CWRlibj+R1EmAOgX+oz2DJ3D+gK3ho5QaWR4o9hPnCbs6ZpuOIeL5zH/1Fa
	tYo00SJxLx6lNB2spouPPoa79J8QEtH/SHdY2JEtRCuWBWdFbH8Co0Vwjxys8mIZG4Q
	f3d1KHJutTHj2DN8DYtWKtxDciVEPTwfecivznFQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807a7dfb1d-19f04be0-0046-4939-9524-e7e50e273ebb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 485ce93b714a6df85d8c433e4283dd62200d6ea70c10e6d39fe1c3d7db7b5ee2
Date: Sat, 30 Apr 2022 12:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651322518
