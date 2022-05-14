Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199342565
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 15:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652541899;
	h=To:Subject:From:Message-Id:Date;
	bh=ynwtdaL5OKPjMG3NBZwxNTN3Ou3ko2IWpIFB4WniiEY=;
	b=AUhPS0lUjjIp4spIU4fA2L0IZ0t8apQqOcKQqs+maHLVjbcNyKyvmc2KNT1gtX8D
	gQntf28g/eItWvAYviNxqQzuSsIGyKNR0+uUiIX+O860DnAg3YlU95IH884LjXRT1/T
	qx3Mh+ardaG1oFCp82xlRwfE+RouXiTLC34duclU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652541899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ynwtdaL5OKPjMG3NBZwxNTN3Ou3ko2IWpIFB4WniiEY=;
	b=hKDTlqEj5ez+Zx64vluiLQslbHqN+q04JuOZroxdFhehIe6TM9jTZDTDCzzfu5kj
	xCwrY11Iz62a3e+5r2rk0SnurjwjkRwJjdxhcWXK2qNRZEUCZKnBoPt6hROWzmTm6BU
	9kY6K3HyobH0K3svCOvKxvxWgS98fKw4Wx+erEFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c32c4285-ec067405-041f-4dda-a37b-3690200840b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3d5b144ee303f8a4db62b371c05ece38cde074b5db55e3740d491d249c8ea66
Date: Sat, 14 May 2022 15:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652541899
