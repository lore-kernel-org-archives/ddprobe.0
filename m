Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7E520FF
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660993852;
	h=To:Subject:From:Message-Id:Date;
	bh=EBJc7QE4SquU5y2lLpHXViMmS4sAGfZZm+H2Mix/0oQ=;
	b=hHB5DC9wgn0X4nYZxGk2EXSmD7jcB+EXaQ6Fw7Zoh5KKB7lyva6gcyS4I9jCZHU2
	z2Uw9DpN1/gLLE3RnBU782l3qofJobkQF1eEQrInpJivvu1Vt6FHst+PwQWyvHlNABo
	Hj/2Dwi9aZp0zxtings3h32+IOhC35+Xz0vLiU5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660993852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EBJc7QE4SquU5y2lLpHXViMmS4sAGfZZm+H2Mix/0oQ=;
	b=Z6AKEyAxXgm4pzLnVJ/yqLc2ImQjFMgOUxLyBNQLET6qo+SQle2oiYRIJCGrQ80L
	6adDsQayhAEfo4UVjwvTtrI3jPYGQORzd427HCqNfBEhDMVkje7Dv/cIyHnxCVjoRZ6
	7TFEVMfbs5Sbupt2Ns/IpfWZCtSuiKh1kM2iyGFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182baf2d46b-e3304328-ce10-4fdc-b73b-6e893e940298-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89a86fec044494da0454f8348b4ad44fde49f8c43640b364a4a94d007ca58deb
Date: Sat, 20 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660993852
