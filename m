Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABC51FCD
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 18:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650564238;
	h=To:Subject:From:Message-Id:Date;
	bh=5FMMxALkwxgyzDXxZ3bdsy0ljvcGH5cwntfgkcUBTw8=;
	b=dHGu7RGs85K0KMsuME6OCo0RSF2pfo8KOeFhZR1gYy93FhMjNNyh1YL/MZWrF46e
	HmBzfkh3NoYvdB7/17BvaketAFOkgHEMD2EbrjUr5DKKr87+VTyTXPx8Y4hksfNXj3P
	rEcpFf1WyQmLzNT0nOnrXb16VNZU8tfU39duJJJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650564238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5FMMxALkwxgyzDXxZ3bdsy0ljvcGH5cwntfgkcUBTw8=;
	b=P/QZe8JiG3F/bSxvTCtUyBJFXtcQ/uBY+ZkwSA2RCB8P7oJY4i1BSVE3IWr9fsZi
	nFNezczsyyJSV3gncxVL8cWDAvRZaLSmZAJjqPgwb8zvj+waOQzdtFM/AhYIdLcCRSf
	1seF8ZMwFOAjnFesZAH3xf/qLDT+1gyQVGcTKN0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804d4b8bab-e8006b20-53cd-43f5-b153-1f7c8d60a062-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0949e9eb94e2fb1edb9e7e5d7aaf94aa0e8764b95938cec0ce88059b22476485
Date: Thu, 21 Apr 2022 18:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650564238
