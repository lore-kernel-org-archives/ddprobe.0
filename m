Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEF07E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646998884;
	h=To:Subject:From:Message-Id:Date;
	bh=DgpGPSIJEjllqa4pHL7RNWfwYLFjkifStvMXs2E48jA=;
	b=FeqRZDrilDHnE6mTnjcV8NgbvsF4yOIJ/kKyiIYjVLO6T1lmVN0P+WDXW0r9XPGv
	6UBPH/zYkrklIHCpU/pEySJhgiAdV5Niz/qh7agn2MZQT1uTaXDxEkcHbSaCD8gkhbe
	ZgXGdoCsR9KvRqcU/OnPYzdGG2NfGzyuNdzfPC1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646998884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DgpGPSIJEjllqa4pHL7RNWfwYLFjkifStvMXs2E48jA=;
	b=XVDTLaCZJ0XAEKN9pfjoiETNi4aox4RPspBMvrtimvxVEYACxXqTZlk6QS8basd9
	SYWm4OBR/uWNLGusfsyTjp+WvrpnNVZ1dEyjICsblLM8Q/FPBW7fs3xmyFODQzaExFk
	ZIG/E5jpw1aVr/39LyOYiHmdIZiHYF480b9tjB9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78c891a6-dcb9be38-6a59-4125-8e2c-fd9b9088ea49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e083d97a0fa8ede054988ed145dce71b59990ba7cc6b2f516d3b91e01b5abe4
Date: Fri, 11 Mar 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646998884
