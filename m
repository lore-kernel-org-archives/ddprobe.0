Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A86633D3
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660941652;
	h=To:Subject:From:Message-Id:Date;
	bh=p4gPF3kpF58U3R+2D2itKpnwo1S4Co0dY+b8OC8mvSA=;
	b=FB3jIEdZPB8VksKbR7FsK9eZjAmZCIoTJkXjtUdRHv3g2TXOcrwIdtWfMvCpeRCF
	ZQa/0WduNHK8JmJybcWZce+cro5evoWX8qstPWl9qUcdf2uiY6iLUcgWDA47tsXPRZI
	Gl2JJyOgV4Wq0XyCd10+bZJf/aAmgciY8SIJx2Y8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660941652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p4gPF3kpF58U3R+2D2itKpnwo1S4Co0dY+b8OC8mvSA=;
	b=Xg6jsJYeZueXWMSlpp9WVIHCh85v2AZO5RGxt5O4SRgQoIxNtMuHmvLj0AtVn2vS
	Ri3tFJIfAZERwAfjdrhHCeYgDoHCZPkuuDUjH+nqWV1/TQqmwBvz37jj75BTTtqrDBc
	6J+GKZTQ1/Pd384wSg7J1w2Iy7rdlax40xzX5jO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b7d65256-8ac71c45-8991-4fbe-b259-4f921a05e231-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 788833064009a878e21b1a1c652df5a92d4f91c17db75d5e293616a719bb1214
Date: Fri, 19 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660941652
