Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21673EA9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658191012;
	h=To:Subject:From:Message-Id:Date;
	bh=j6hMLO+X3GbrHtfn5rNmZmu8wgtVdoxu1OV7SxuMUWY=;
	b=PBgO7IpPbymygyrOXz4qgfo9Ql7Ny7AW80GvS9cqE/bcplwyunDB9HzC/ab2sOWb
	PkPtvAchsqA4ioT87oEXxd02Vz8bxPjiJbveCLSJGO9FvdvSfIpusFGhusMh7joSFzs
	Da2Wmn+bKFSZ/PvLWvblTJ3foTi3pSnURQVBdZHA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658191012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j6hMLO+X3GbrHtfn5rNmZmu8wgtVdoxu1OV7SxuMUWY=;
	b=hLbI+yNHHpJetCY5ro5Rvrmirz65/I4yh95l+68V98y/Q6qKFC4ONP1uw67/H4PR
	zvgfMKdjRvErriHn6NU1azBXHXHiEAEADl9UHxiLd8tTEcu4AIe7jpz2jGO/7VY8U/S
	EuRn2Q7eqLR962Y5kENvrtX/XqWhrKk9z85UdupA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018213e2e1ee-29016f46-6f9c-4ce6-af70-6da0af6e97e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55d6eb46751fe54094f1d85ef39a2dcb24188b5cdca7e30c29ef05d3f826129d
Date: Tue, 19 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658191012
