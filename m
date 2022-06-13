Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ADC110D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 07:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655107139;
	h=To:Subject:From:Message-Id:Date;
	bh=taszGDBWtfSmlRJmjgLcpye+m4DcLEINsdRZUt7R+N8=;
	b=C5s0fo7ChSxnufl9A6lETiXx5NwHAH3bmRHQjgqiAf3MqFtfxQMVg2767dueRS4a
	dMDeUg1o+/hh8xnoGkhrCz8RvCp2PRT67RXAdM7NZ2YRy8BsWVnANgB/71/bSkvJdlo
	6AxCzzLJfE5QdDU5mQ2xvZ1XFlIwn11tofanrguk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655107139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=taszGDBWtfSmlRJmjgLcpye+m4DcLEINsdRZUt7R+N8=;
	b=Dmo+14LXt/04HOCV98ODieTtRkyrvqBJw8Ik/dgHLbpdnDNWEzx+N2biGva+9fvY
	1b0VRie0mrH0MmwGEnyixr+0a3KsPDGTzrYOCmV+G1x0fdBF2CZz5NJcPbKO2Ytbx4D
	OR9ihUZf/wYCyWdMmlinslg4vQ7jsJ3ccvb9H5Wg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815c12b6e0-f2692e39-5fec-4f44-8372-54959dd83a2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e05dcb53c1ec408131af6b889b6b90c106ee02a94256b07608a7b5d4a5e91161
Date: Mon, 13 Jun 2022 07:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655107139
